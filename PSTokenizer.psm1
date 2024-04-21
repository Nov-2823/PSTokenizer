# [SECTION]  - $Host.UI.RawUI TokenSet
$global:rawui=[ordered]@{
    bgc=$Host.UI.RawUI.BackgroundColor
    fgc=$Host.UI.RawUI.ForegroundColor
    cs=$Host.UI.RawUI.CursorSize
    cpos=[ordered]@{
        x=$Host.UI.RawUI.CursorPosition.X
        y=$Host.UI.RawUI.CursorPosition.Y
    }
    ws=[ordered]@{
        h=$Host.UI.RawUI.WindowSize.Height
        w=$Host.UI.RawUI.WindowSize.Width
    }
    mws=[ordered]@{
        h=$Host.UI.RawUI.MaxWindowSize.Height
        w=$Host.UI.RawUI.MaxWindowSize.Width
    }
    mpws=[ordered]@{
        h=$Host.UI.RawUI.MaxPhysicalWindowSize.Height
        w=$Host.UI.RawUI.MaxPhysicalWindowSize.Width
    }
    wp=[ordered]@{
        x=$Host.UI.RawUI.WindowPosition.X
        y=$Host.UI.RawUI.WindowPosition.Y
    }
    wt=$Host.UI.RawUI.WindowTitle
    bs=[ordered]@{
        h=$Host.UI.RawUI.BufferSize.Height
        w=$Host.UI.RawUI.BufferSize.Width
    }
    ka=$Host.UI.RawUI.KeyAvailable
}

# [SECTION]  - $PSStyle Token Set
$global:style=[ordered]@{
    res = $PSStyle.Reset
    e=[ordered]@{
        blink1=$PSStyle.Blink
        blink0=$PSStyle.BlinkOff
        bold1=$PSStyle.Bold
        bold0=$PSStyle.BoldOff
        dim1=$PSStyle.dim
        dim0=$PSStyle.DimOff
        hide1=$PSStyle.Hidden
        hide0=$PSStyle.HiddenOff
        rev1=$PSStyle.Reverse
        rev0=$PSStyle.ReverseOff
        italic1=$PSStyle.Italic
        italic0=$PSStyle.ItalicOff
        uline1=$PSStyle.Underline
        uline0=$PSStyle.UnderlineOff
        st1=$PSStyle.Strikethrough
        st0=$PSStyle.StrikethroughOff
    }
    fgc=[ordered]@{
        w = $PSStyle.Foreground.White 
        b = $PSStyle.Foreground.Black
        c = $PSStyle.Foreground.Cyan
        y = $PSStyle.Foreground.Yellow
        m =$PSStyle.Foreground.Magenta
        g = $PSStyle.Foreground.green
        bl = $PSStyle.Foreground.Blue
        r = $PSStyle.Foreground.red
    
        brw = $PSStyle.Foreground.BrightWhite
        brb = $PSStyle.Foreground.BrightBlack
        brc = $PSStyle.Foreground.BrightCyan
        bry = $PSStyle.Foreground.BrightYellow
        brm = $PSStyle.Foreground.BrightMagenta
        brg = $PSStyle.Foreground.BrightGreen
        brbl = $PSStyle.Foreground.BrightBlue
        brr = $PSStyle.Foreground.BrightRed
    }
    bgc=[ordered]@{
        w = $PSStyle.Background.White 
        b = $PSStyle.Background.Black
        c = $PSStyle.Background.Cyan
        y = $PSStyle.Background.Yellow
        m =$PSStyle.Background.Magenta
        g = $PSStyle.Background.green
        bl = $PSStyle.Background.Blue
        r = $PSStyle.Background.red
    
        brw = $PSStyle.Background.BrightWhite
        brb = $PSStyle.Background.BrightBlack
        brc = $PSStyle.Background.BrightCyan
        bry = $PSStyle.Background.BrightYellow
        brm = $PSStyle.Background.BrightMagenta
        brg = $PSStyle.Background.BrightGreen
        brbl = $PSStyle.Background.BrightBlue
        brr = $PSStyle.Background.BrightRed
    }
    fi=[ordered]@{
        dir = $PSStyle.FileInfo.Directory
        exe = $PSSyle.FileInfo.Executable 
        sym = $PSStyle.FileInfo.SymbolicLink
            ext=[ordered]@{
        
            }   
    }
    pr=[ordered]@{
        st = $PSStyle.Progress.Style
        mw = $PSStyle.Progress.MaxWidth
        v = $PSStyle.Progress.View
        uos = $PSStyle.Progress.UseOSCIndicator
    }
    or = $PSStyle.OutputRendering
    
}


$PSTokenizer=[Ordered]@{

    Info=[Ordered]@{
        About=[Ordered]@{
            Name='PSTokenizer'
            Version='0.6.1'
            Build='DEV-0.6.1'
            Author='Nov-2823'
            Description='Accessing commonly referenced Objects and their Properties has never been easier!'
            Links=[Ordered]@{
                GitHub='https://www.github.com/Nov-2823/PSTokenizer'
                PSGallery=''
            }
        }
        TokenSets=@('$Host.UI.RawUI','$PSStyle')
    }
    Help=[Ordered]@{
        UI=[Ordered]@{}
        RawUI=[Ordered]@{}
        PSStyle=[Ordered]@{
            e=[Ordered]@{
                TokenName='Effects'
                TargetProperty='[Multiple Target Properties]'
                SpecialAttributes=[ordered]@{
                    "Suffix of '1'"='On'
                    "Suffix of '0'"='Off'
                }
                Properties=[Ordered]@{
                    blink='Blink'
                    bold='Bold'
                    dim='Dim'
                    hide='Hidden'
                    rev='Reverse'
                    italic='Italic'
                    uline='Underline'
                    st='Strikethrough'    
                }    
            }
        }        
    }
}


#TODO - 
# >> Add $Host.UI entries
# >> Add functions that display help messages
# >> Finish up $PSTokenizer Object 
# >> author help docs
# >> Clean up
# >> Testing and debugging