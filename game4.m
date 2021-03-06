//
//  game4.m
//  Deflected
//
//  Created by Caleb Scott on 5/9/16.
//  Copyright © 2016 Caleb Scott. All rights reserved.
//

#import "game4.h"


#import <StoreKit/StoreKit.h>


@interface game4 ()

@end

@implementation game4



-(IBAction)LeftArrow:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];

    BallStoreI = BallStoreI - 1;
    
    if (BallStoreI == -1) {
        
        [Ball stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Deep red.png"];
        [Ball setImage:img];
        
        BallStoreLabel.text = @"Deep red tint Ball";
        BallStoreI = BallStoreI + 20;
        WhiteBallUse.hidden = YES;
        BlackBallUse.hidden = YES;
        StrobeBallUse.hidden = YES;
        OrangeBallUse.hidden = YES;
        PinkBallUse.hidden = YES;
        PurpleBallUse.hidden = YES;
        DarkGreenBallUse.hidden = YES;
        tealBallUse.hidden = YES;
        BrightGreenBallUse.hidden = YES;
        GreenBallUse.hidden = YES;
        SkyBlueBallUse.hidden = YES;
        AquaMarineBallUse.hidden = YES;
        RedBallUse.hidden = YES;
        SilverBallUse.hidden = YES;
        BlueBallUse.hidden = YES;
        GoldBallUse.hidden = YES;
        OrangeTintBallUse.hidden = YES;
        BlueTintBallUse.hidden = YES;
        GreenTintBallUse.hidden = YES;
        
    }
    if (BallStoreI == 0) {
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"white.png"];
        [BallStoreImage setImage:img];
        BallStoreLabel.text = @"White Ball";
        WhiteBallUse.hidden = NO;
        BlackBallUse.hidden = YES;
        StrobeBallUse.hidden = YES;
        OrangeBallUse.hidden = YES;
        PinkBallUse.hidden = YES;
        PurpleBallUse.hidden = YES;
        DarkGreenBallUse.hidden = YES;
        tealBallUse.hidden = YES;
        BrightGreenBallUse.hidden = YES;
        GreenBallUse.hidden = YES;
        SkyBlueBallUse.hidden = YES;
        AquaMarineBallUse.hidden = YES;
        RedBallUse.hidden = YES;
        SilverBallUse.hidden = YES;
        BlueBallUse.hidden = YES;
        GoldBallUse.hidden = YES;
        OrangeTintBallUse.hidden = YES;
        BlueTintBallUse.hidden = YES;
        GreenTintBallUse.hidden = YES;
        DeepRedTintBallUse.hidden = YES;
        Buy.hidden = YES;
    }
    if (BallStoreI == 1) {
        BallStoreLabel.text = @"Black Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"black.png"];
        [BallStoreImage setImage:img];
        if (BallS < 1) {
            if (BallS == 0) {
                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
            
        } else {
            BallStoreLabel.text = @"Black Ball";
            BlackBallUse.hidden = NO;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
        
    }
    if (BallStoreI == 2) {
        BallStoreLabel.text = @"Strobe Ball";
        BallStoreImage.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"black.png"],
                                          [UIImage imageNamed:@"white.png"],
                                          nil];
        
        [BallStoreImage setAnimationRepeatCount:0];
        BallStoreImage.animationDuration = 0.8;
        [BallStoreImage startAnimating];
        if (BallS < 2) {
            if (BallS == 1) {
                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else{
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        }  else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = NO;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    
    if (BallStoreI == 3) {
        
        BallStoreLabel.text = @"Orange Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"orange.png"];
        [BallStoreImage setImage:img];
        if (BallS < 3) {
            if (BallS == 2) {
                Buy.hidden = NO;
                OrangeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = NO;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 4) {
        BallStoreLabel.text = @"Pink Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"pink.png"];
        [BallStoreImage setImage:img];
        if (BallS < 4) {
            if (BallS == 3) {
                Buy.hidden = NO;
                PinkBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = NO;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 5) {
        BallStoreLabel.text = @"Purple Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"purple.png"];
        [BallStoreImage setImage:img];
        if (BallS < 5) {
            if (BallS == 4) {
                Buy.hidden = NO;
                PurpleBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = NO;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 6) {
        BallStoreLabel.text = @"Dark Green Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Dark green.png"];
        [BallStoreImage setImage:img];
        if (BallS < 6) {
            if (BallS == 5) {
                Buy.hidden = NO;
                DarkGreenBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = NO;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;        }
    }
    if (BallStoreI == 7) {
        
        BallStoreLabel.text = @"Teal Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"teal.png"];
        [BallStoreImage setImage:img];
        if (BallS < 7) {
            if (BallS == 6) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = NO;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }    }
    if (BallStoreI == 8) {
        BallStoreLabel.text = @"Bright Green Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"light green.png"];
        [BallStoreImage setImage:img];
        if (BallS < 8) {
            if (BallS == 7) {
                Buy.hidden = NO;
                BrightGreenBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = NO;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
            
        }
    }
    
    if (BallStoreI == 9) {
        BallStoreLabel.text = @"Green Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Green.png"];
        [BallStoreImage setImage:img];
        if (BallS < 9) {
            if (BallS == 8) {
                Buy.hidden = NO;
                GreenBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = NO;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
            
        }
        
        
        
    }
    if (BallStoreI == 10) {
        BallStoreLabel.text = @"Sky Blue Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"sky blue.png"];
        [BallStoreImage setImage:img];
        if (BallS < 10) {
            if (BallS == 9) {
                Buy.hidden = NO;
                SkyBlueBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = NO;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 11) {
        BallStoreLabel.text = @"Aqua Marine Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Aqua Marine Ball.png"];
        [BallStoreImage setImage:img];
        if (BallS < 11) {
            if (BallS == 10) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = NO;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 12) {
        BallStoreLabel.text = @"Red Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"red.png"];
        [BallStoreImage setImage:img];
        if (BallS < 12) {
            if (BallS == 11) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = NO;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 13) {
        BallStoreLabel.text = @"Silver Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"silver.png"];
        [BallStoreImage setImage:img];
        if (BallS < 13) {
            if (BallS == 12) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = NO;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 14) {
        BallStoreLabel.text = @"Blue Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"blue.png"];
        [BallStoreImage setImage:img];
        if (BallS < 14) {
            if (BallS == 13) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = NO;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 15) {
        BallStoreLabel.text = @"Gold Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"gold.png"];
        [BallStoreImage setImage:img];
        if (BallS < 15) {
            if (BallS == 14) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = NO;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 16) {
        BallStoreLabel.text = @"Orange tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"orange tint.png"];
        [BallStoreImage setImage:img];
        if (BallS < 16) {
            if (BallS == 15) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = NO;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }}
    if (BallStoreI == 17) {
        BallStoreLabel.text = @"Blue tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"blue tint.png"];
        [BallStoreImage setImage:img];
        if (BallS < 17) {
            if (BallS == 16) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = NO;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 18) {
        BallStoreLabel.text = @"Green tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"green tint.png"];
        [BallStoreImage setImage:img];
        if (BallS < 18) {
            if (BallS == 17) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = NO;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 19) {
        BallStoreLabel.text = @"Deep red tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Deep red.png"];
        [BallStoreImage setImage:img];
        if (BallS < 19) {
            if (BallS == 18) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = NO;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }}
    if (BallStoreI < 3) {
        BallCoins.text = @"50 Coins";
    } else {
        if (BallStoreI < 16) {
            BallCoins.text = @"100 Coins";
            
        } else {
            if (BallStoreI < 21) {
                BallCoins.text = @"150 Coins";
                
            }
        }
    }
}
-(IBAction)RightArrow:(id)sender{
    BallStoreI = BallStoreI + 1;
    [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];

    if (BallStoreI == 0) {
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"white.png"];
        [BallStoreImage setImage:img];
        BallStoreLabel.text = @"White Ball";
        WhiteBallUse.hidden = NO;
        BlackBallUse.hidden = YES;
        StrobeBallUse.hidden = YES;
        OrangeBallUse.hidden = YES;
        PinkBallUse.hidden = YES;
        PurpleBallUse.hidden = YES;
        DarkGreenBallUse.hidden = YES;
        tealBallUse.hidden = YES;
        BrightGreenBallUse.hidden = YES;
        GreenBallUse.hidden = YES;
        SkyBlueBallUse.hidden = YES;
        AquaMarineBallUse.hidden = YES;
        RedBallUse.hidden = YES;
        SilverBallUse.hidden = YES;
        BlueBallUse.hidden = YES;
        GoldBallUse.hidden = YES;
        OrangeTintBallUse.hidden = YES;
        BlueTintBallUse.hidden = YES;
        GreenTintBallUse.hidden = YES;
        DeepRedTintBallUse.hidden = YES;
        Buy.hidden = YES;
    }
    if (BallStoreI == 1) {
        BallStoreLabel.text = @"Black Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"black.png"];
        [BallStoreImage setImage:img];
        if (BallS < 1) {
            if (BallS == 0) {
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
            
        } else {
            BallStoreLabel.text = @"Black Ball";
            BlackBallUse.hidden = NO;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
        
    }
    if (BallStoreI == 2) {
        BallStoreLabel.text = @"Strobe Ball";
        BallStoreImage.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"black.png"],
                                          [UIImage imageNamed:@"white.png"],
                                          nil];
        
        [BallStoreImage setAnimationRepeatCount:0];
        BallStoreImage.animationDuration = 0.8;
        [BallStoreImage startAnimating];
        if (BallS < 2) {
            if (BallS == 1) {
                Buy.hidden = NO;
                StrobeBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else{
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        }  else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = NO;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    
    if (BallStoreI == 3) {
        
        BallStoreLabel.text = @"Orange Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"orange.png"];
        [BallStoreImage setImage:img];
        if (BallS < 3) {
            if (BallS == 2) {
                Buy.hidden = NO;
                OrangeBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = NO;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 4) {
        BallStoreLabel.text = @"Pink Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"pink.png"];
        [BallStoreImage setImage:img];
        if (BallS < 4) {
            if (BallS == 3) {
                Buy.hidden = NO;
                PinkBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = NO;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 5) {
        BallStoreLabel.text = @"Purple Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"purple.png"];
        [BallStoreImage setImage:img];
        if (BallS < 5) {
            if (BallS == 4) {
                Buy.hidden = NO;
                PurpleBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = NO;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 6) {
        BallStoreLabel.text = @"Dark Green Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Dark green.png"];
        [BallStoreImage setImage:img];
        if (BallS < 6) {
            if (BallS == 5) {
                Buy.hidden = NO;
                DarkGreenBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = NO;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;        }
    }
    if (BallStoreI == 7) {
        
        BallStoreLabel.text = @"Teal Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"teal.png"];
        [BallStoreImage setImage:img];
        if (BallS < 7) {
            if (BallS == 6) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = NO;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }    }
    if (BallStoreI == 8) {
        BallStoreLabel.text = @"Bright Green Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"light green.png"];
        [BallStoreImage setImage:img];
        if (BallS < 8) {
            if (BallS == 7) {
                Buy.hidden = NO;
                BrightGreenBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = NO;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
            
        }
    }
    
    if (BallStoreI == 9) {
        BallStoreLabel.text = @"Green Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Green.png"];
        [BallStoreImage setImage:img];
        if (BallS < 9) {
            if (BallS == 8) {
                Buy.hidden = NO;
                GreenBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = NO;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
            
        }
        
        
        
    }
    if (BallStoreI == 10) {
        BallStoreLabel.text = @"Sky Blue Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"sky blue.png"];
        [BallStoreImage setImage:img];
        if (BallS < 10) {
            if (BallS == 9) {
                Buy.hidden = NO;
                SkyBlueBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = NO;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 11) {
        BallStoreLabel.text = @"Aqua Marine Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Aqua Marine Ball.png"];
        [BallStoreImage setImage:img];
        if (BallS < 11) {
            if (BallS == 10) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = NO;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 12) {
        BallStoreLabel.text = @"Red Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"red.png"];
        [BallStoreImage setImage:img];
        if (BallS < 12) {
            if (BallS == 11) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = NO;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 13) {
        BallStoreLabel.text = @"Silver Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"silver.png"];
        [BallStoreImage setImage:img];
        if (BallS < 13) {
            if (BallS == 12) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = NO;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 14) {
        BallStoreLabel.text = @"Blue Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"blue.png"];
        [BallStoreImage setImage:img];
        if (BallS < 14) {
            if (BallS == 13) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = NO;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 15) {
        BallStoreLabel.text = @"Gold Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"gold.png"];
        [BallStoreImage setImage:img];
        if (BallS < 15) {
            if (BallS == 14) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = NO;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 16) {
        BallStoreLabel.text = @"Orange tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"orange tint.png"];
        [BallStoreImage setImage:img];
        if (BallS < 16) {
            if (BallS == 15) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = NO;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }}
    if (BallStoreI == 17) {
        BallStoreLabel.text = @"Blue tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"blue tint.png"];
        [BallStoreImage setImage:img];
        if (BallS < 17) {
            if (BallS == 16) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = NO;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 18) {
        BallStoreLabel.text = @"Green tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"green tint.png"];
        [BallStoreImage setImage:img];
        if (BallS < 18) {
            if (BallS == 17) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = NO;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }
    }
    if (BallStoreI == 19) {
        BallStoreLabel.text = @"Deep red tint Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"Deep red.png"];
        [BallStoreImage setImage:img];
        if (BallS < 19) {
            if (BallS == 18) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;                OrangeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        }else{
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = NO;
            WhiteBallUse.hidden = YES;
            Buy.hidden = YES;
        }}
    if (BallStoreI == 20) {
        BallStoreLabel.text = @"White Ball";
        [BallStoreImage stopAnimating];
        
        UIImage *img = [UIImage imageNamed:@"white.png"];
        [BallStoreImage setImage:img];
        WhiteBallUse.hidden = NO;
        DeepRedTintBallUse.hidden = YES;
        Buy.hidden = YES;
        BallStoreI = BallStoreI - 20;
        
    }
    if (BallStoreI < 3) {
        BallCoins.text = @"50 Coins";
    } else {
        if (BallStoreI < 16) {
            BallCoins.text = @"100 Coins";
            
        } else {
            if (BallStoreI < 21) {
                BallCoins.text = @"150 Coins";
                
            }
        }
    }
    
    
}



-(IBAction)Buy:(id)sender {
    [self BallMovement];

    
    if (BallS < 3) {
        if (ScoreNumber > 49) {
            ScoreNumber = ScoreNumber - 50;
            BallS = BallS + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
            Buy.hidden = YES;
        }
    } else {
        if (BallS < 16) {
            if (ScoreNumber > 99) {
                ScoreNumber = ScoreNumber - 100;
                BallS = BallS + 1;
                [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
                Buy.hidden = YES;
            }
        } else {
            if (BallS < 21) {
                if (ScoreNumber > 149) {
                    ScoreNumber = ScoreNumber - 150;
                    BallS = BallS + 1;
                    [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
                    Buy.hidden = YES;
                }
            }
        }
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        if (BallStoreI == 0) {
            BallStoreLabel.text = @"White Ball";
            WhiteBallUse.hidden = NO;
            BlackBallUse.hidden = YES;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            Buy.hidden = YES;
        }
        if (BallStoreI == 1) {
            BallStoreLabel.text = @"Black Ball";
            
            if (BallS < 1) {
                if (BallS == 0) {
                    Buy.hidden = NO;
                    BlackBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                } else {
                    OrangeBallUse.hidden = YES;
                    BlackBallUse.hidden = YES;
                    Buy.hidden = YES;
                    BlackBallUse.hidden = YES;
                    StrobeBallUse.hidden = YES;
                    OrangeBallUse.hidden = YES;
                    PinkBallUse.hidden = YES;
                    PurpleBallUse.hidden = YES;
                    DarkGreenBallUse.hidden = YES;
                    tealBallUse.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                }
                
            } else {
                BallStoreLabel.text = @"Black Ball";
                BlackBallUse.hidden = NO;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                Buy.hidden = YES;
            }
            
        }
        if (BallStoreI == 2) {
            BallStoreLabel.text = @"Strobe Ball";
            
            if (BallS < 2) {
                if (BallS == 1) {
                    Buy.hidden = NO;
                    StrobeBallUse.hidden = YES;
                } else{
                    BlackBallUse.hidden = YES;
                    OrangeBallUse.hidden = YES;
                    Buy.hidden = YES;
                    StrobeBallUse.hidden = YES;
                    OrangeBallUse.hidden = YES;
                    PinkBallUse.hidden = YES;
                    PurpleBallUse.hidden = YES;
                    DarkGreenBallUse.hidden = YES;
                    tealBallUse.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    
                }
            }  else {
                StrobeBallUse.hidden = NO;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 3) {
            BallStoreLabel.text = @"Orange Ball";
            if (BallS < 3) {
                if (BallS == 2) {
                    Buy.hidden = NO;
                    OrangeBallUse.hidden = YES;
                } else {
                    BlackBallUse.hidden = YES;
                    OrangeBallUse.hidden = YES;
                    Buy.hidden = YES;
                    OrangeBallUse.hidden = YES;
                    PinkBallUse.hidden = YES;
                    PurpleBallUse.hidden = YES;
                    DarkGreenBallUse.hidden = YES;
                    tealBallUse.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    
                }
            } else {
                
                OrangeBallUse.hidden = NO;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 4) {
            BallStoreLabel.text = @"Pink Ball";
            if (BallS < 4) {
                if (BallS == 3) {
                    Buy.hidden = NO;
                    PinkBallUse.hidden = YES;
                } else {
                    BlackBallUse.hidden = YES;
                    OrangeBallUse.hidden = YES;
                    Buy.hidden = YES;
                    PinkBallUse.hidden = YES;
                    PurpleBallUse.hidden = YES;
                    DarkGreenBallUse.hidden = YES;
                    tealBallUse.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    
                }
            } else {
                
                PinkBallUse.hidden = NO;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 5) {
            BallStoreLabel.text = @"Purple Ball";
            if (BallS < 5) {
                if (BallS == 4) {
                    Buy.hidden = NO;
                    PurpleBallUse.hidden = YES;
                } else {
                    OrangeBallUse.hidden = YES;
                    BlackBallUse.hidden = YES;
                    Buy.hidden = YES;
                    PurpleBallUse.hidden = YES;
                    DarkGreenBallUse.hidden = YES;
                    tealBallUse.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                }
            } else {
                
                PurpleBallUse.hidden = NO;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 6) {
            BallStoreLabel.text = @"Dark Green Ball";
            
            if (BallS < 6) {
                if (BallS == 5) {
                    Buy.hidden = NO;
                    DarkGreenBallUse.hidden = YES;
                } else {
                    BlackBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    DarkGreenBallUse.hidden = YES;
                }
            } else {
                
                BallStoreLabel.text = @"Dark Green Ball";
                DarkGreenBallUse.hidden = NO;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 7) {
            
            BallStoreLabel.text = @"Teal Ball";
            if (BallS < 7) {
                if (BallS == 6) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    BlackBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                }
            } else {
                tealBallUse.hidden = NO;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }    }
        if (BallStoreI == 8) {
            BallStoreLabel.text = @"Bright Green Ball";
            if (BallS < 8) {
                if (BallS == 7) {
                    Buy.hidden = NO;
                    BrightGreenBallUse.hidden = YES;
                } else {
                    BlackBallUse.hidden = YES;
                    Buy.hidden = YES;
                    BrightGreenBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                }
            }
            else {
                BrightGreenBallUse.hidden = NO;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        }
        
        if (BallStoreI == 9) {
            BallStoreLabel.text = @"Green Ball";
            if (BallS < 9) {
                if (BallS == 8) {
                    Buy.hidden = NO;
                    GreenBallUse.hidden = YES;
                } else {
                    BlackBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GreenBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                }
            } else {
                GreenBallUse.hidden = NO;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
            
            
            
        }
        if (BallStoreI == 10) {
            BallStoreLabel.text = @"Sky Blue Ball";
            if (BallS < 10) {
                if (BallS == 9) {
                    Buy.hidden = NO;
                    SkyBlueBallUse.hidden = YES;
                } else {
                    Buy.hidden = YES;
                    SkyBlueBallUse.hidden = YES;
                    AquaMarineBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                }
            }
            else{
                SkyBlueBallUse.hidden = NO;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 11) {
            BallStoreLabel.text = @"Aqua Marine Ball";
            if (BallS < 11) {
                if (BallS == 10) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    Buy.hidden = YES;
                    SilverBallUse.hidden = YES;
                    RedBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                AquaMarineBallUse.hidden = NO;
                SilverBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 12) {
            BallStoreLabel.text = @"Red Ball";
            if (BallS < 12) {
                if (BallS == 11) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    SilverBallUse.hidden = YES;
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                RedBallUse.hidden = NO;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 13) {
            BallStoreLabel.text = @"Silver Ball";
            if (BallS < 13) {
                if (BallS == 12) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    BlueBallUse.hidden = YES;
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                SilverBallUse.hidden = NO;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 14) {
            BallStoreLabel.text = @"Blue Ball";
            if (BallS < 14) {
                if (BallS == 13) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    GoldBallUse.hidden = YES;
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                BlueBallUse.hidden = NO;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 15) {
            BallStoreLabel.text = @"Gold Ball";
            if (BallS < 15) {
                if (BallS == 14) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    OrangeTintBallUse.hidden = YES;
                    BlueTintBallUse.hidden = YES;
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                GoldBallUse.hidden = NO;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 16) {
            BallStoreLabel.text = @"Orange tint Ball";
            if (BallS < 16) {
                if (BallS == 15) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    
                    BlueTintBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                OrangeTintBallUse.hidden = NO;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
                BlueTintBallUse.hidden = YES;
            }}
        if (BallStoreI == 17) {
            BallStoreLabel.text = @"Blue tint Ball";
            if (BallS < 17) {
                if (BallS == 16) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    GreenTintBallUse.hidden = YES;
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                BlueTintBallUse.hidden = NO;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 18) {
            BallStoreLabel.text = @"Green tint Ball";
            if (BallS < 18) {
                if (BallS == 17) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    DeepRedTintBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                }
            }else{
                GreenTintBallUse.hidden = NO;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        if (BallStoreI == 19) {
            BallStoreLabel.text = @"Deep red tint Ball";
            if (BallS < 19) {
                if (BallS == 18) {
                    Buy.hidden = NO;
                    tealBallUse.hidden = YES;
                } else {
                    Buy.hidden = YES;
                    tealBallUse.hidden = YES;
                    WhiteBallUse.hidden = YES;
                    
                }
            }else{
                DeepRedTintBallUse.hidden = NO;
                WhiteBallUse.hidden = YES;
            }}
    }
    
    
}

-(IBAction)WhiteBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"white.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)BlackBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"black.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)StrobeBallUse{
    Ball.animationImages = [NSArray arrayWithObjects:
                            [UIImage imageNamed:@"black.png"],
                            [UIImage imageNamed:@"white.png"],
                            nil];
    [Ball setAnimationRepeatCount:0];
    Ball.animationDuration = 0.8;
    [Ball startAnimating];
    [Ball2 setAnimationRepeatCount:0];
    Ball2.animationDuration = 0.8;
    [Ball2 startAnimating];
    [Ball3 setAnimationRepeatCount:0];
    Ball3.animationDuration = 0.8;
    [Ball3 startAnimating];
}
-(IBAction)OrangeBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"orange.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)PinkBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"pink.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)PurpleBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"purple.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)DarkGreenBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"Dark green.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)tealBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"teal.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)BrightGreenBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"light green.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)GreenBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"Green.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)SkyBlueBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"sky blue.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)AquaMarineBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"Aqua Marine Ball.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)RedBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"red.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)SilverBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"silver.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)BlueBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"blue.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)GoldBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"gold.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)BlueTintBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"blue tint.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)GreenTintBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"green tint.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)DeepRedTintBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"Deep red.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}
-(IBAction)OrangeTintBallUse{
    [Ball stopAnimating];
    
    UIImage *img = [UIImage imageNamed:@"orange tint.png"];
    [Ball setImage:img];
    [Ball2 setImage:img];
    [Ball3 setImage:img];
}













-(IBAction)Exit:(id)sender{
    
    Start_View.hidden = NO;
}




-(IBAction)PaddleHome:(id)sender{
    BallStore.hidden = YES;
    [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];

}

-(IBAction)Store:(id)sender{
    BallStore.hidden = NO;
    
    
}
-(IBAction)Startscore:(id)sender{
    
    timer3 = [NSTimer scheduledTimerWithTimeInterval:5.00 target:self selector:@selector(Score) userInfo:Nil repeats:YES];
    
}

-(IBAction)Play:(id)sender{
    
    
    timer7 = [NSTimer scheduledTimerWithTimeInterval:1.00 target:self selector:@selector(ScoreBall) userInfo:Nil repeats:YES];
    
}

-(IBAction)Score{
    
    ScoreNumber = ScoreNumber + 1;
}



















-(void)Collision{
    
    
    
    if (CGRectIntersectsRect(Ball.frame, PlayerXbottom.frame)) {
        
        Y = arc4random() %5;
        
        
        
    }
    if (CGRectIntersectsRect(Ball.frame, PlayerXtop.frame)) {
        
        Y = arc4random() %5;
        Y = 0-Y;
        
        
    }
    if (CGRectIntersectsRect(Ball.frame, PlayerYleft.frame)) {
        
        X = arc4random() %5;
        
        
        
        
    }
    if (CGRectIntersectsRect(Ball.frame, PlayerYright.frame)) {
        
        X = arc4random() %5;
        X = 0-X;
        
        
    }
    if (CGRectIntersectsRect(Ball2.frame, PlayerXbottom.frame)) {
        
        Y2 = arc4random() %5;
        
        
        
    }
    if (CGRectIntersectsRect(Ball2.frame, PlayerXtop.frame)) {
        
        Y2 = arc4random() %5;
        Y2 = 0-Y2;
        
        
    }
    if (CGRectIntersectsRect(Ball2.frame, PlayerYleft.frame)) {
        
        X2 = arc4random() %5;
        
        
        
        
    }
    if (CGRectIntersectsRect(Ball2.frame, PlayerYright.frame)) {
        
        X2 = arc4random() %5;
        X2 = 0-X2;
        
        
    }
    if (CGRectIntersectsRect(Ball3.frame, PlayerXbottom.frame)) {
        
        Y3 = arc4random() %5;
        
        
        
    }
    if (CGRectIntersectsRect(Ball3.frame, PlayerXtop.frame)) {
        
        Y3 = arc4random() %5;
        Y3 = 0-Y3;
        
        
    }
    if (CGRectIntersectsRect(Ball3.frame, PlayerYleft.frame)) {
        
        X3 = arc4random() %5;
        
        
        
        
    }
    if (CGRectIntersectsRect(Ball3.frame, PlayerYright.frame)) {
        
        X3 = arc4random() %5;
        X3 = 0-X3;
        
        
    }
    if (CGRectIntersectsRect(SideControl.frame, PlayerYright.frame)) {
        
        
    }
}
-(void)CollisionScore{
    if (CGRectIntersectsRect(Ball.frame, PlayerXbottom.frame)) {
        
        
    }
    if (CGRectIntersectsRect(Ball.frame, PlayerXtop.frame)) {
        
        
        
    }
    if (CGRectIntersectsRect(Ball.frame, PlayerYleft.frame)) {
        
        
        
        
    }
    if (CGRectIntersectsRect(SideControl.frame, PlayerYleft.frame)) {
        Left.center = CGPointMake(PlayerYleft.center.x + 0, Left.center.y - 1);
        
        if (PlayerYleft.center.y < 95) {
            PlayerYleft.center = CGPointMake(PlayerYleft.center.x, 95);
        }
    }
    
    else {
        Left.center = CGPointMake(PlayerYleft.center.x + 0, Left.center.y + 1);
        if (PlayerYleft.center.y > 240) {
            PlayerYleft.center = CGPointMake(PlayerYleft.center.x, 240);
        }
    }
    
    
    
    
    
    
    
    
    
    if (CGRectIntersectsRect(SideControl.frame, PlayerYright.frame)) {
        Right.center = CGPointMake(PlayerYright.center.x + 0, Right.center.y - 1);
        
        if (PlayerYright.center.y < 95) {
            PlayerYright.center = CGPointMake(PlayerYright.center.x, 95);
        }
    }
    
    else {
        Right.center = CGPointMake(PlayerYright.center.x + 0, Right.center.y + 1);
        if (PlayerYright.center.y > 240) {
            PlayerYright.center = CGPointMake(PlayerYright.center.x, 240);
        }
    }
    
}





-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *Drag = [[event allTouches] anyObject];
    PlayerXbottom.center = [Drag locationInView:self.view];
    PlayerXtop.center = [Drag locationInView:self.view];
    SideControl.center = [Drag locationInView:self.view];
    
    
    
    
    if (PlayerXbottom.center.x > 258) {
        PlayerXbottom.center = CGPointMake(258, PlayerXbottom.center.y);
    }
    if (PlayerXbottom.center.x < 50) {
        PlayerXbottom.center = CGPointMake(50, PlayerXbottom.center.y);
    }
    if (PlayerXbottom.center.y > 47) {
        PlayerXbottom.center = CGPointMake(PlayerXbottom.center.x, 47);
    }
    if (PlayerXbottom.center.y < 47) {
        PlayerXbottom.center = CGPointMake(PlayerXbottom.center.x, 47);
    }
    if (PlayerXtop.center.x > 258) {
        PlayerXtop.center = CGPointMake(258, PlayerXtop.center.y);
    }
    if (PlayerXtop.center.x < 50) {
        PlayerXtop.center = CGPointMake(50, PlayerXtop.center.y);
    }
    if (PlayerXtop.center.y > 285) {
        PlayerXtop.center = CGPointMake(PlayerXtop.center.x, 285);
    }
    if (PlayerXtop.center.y < 285) {
        PlayerXtop.center = CGPointMake(PlayerXtop.center.x, 285);
    }
    if (PlayerYleft.center.x > 13) {
        PlayerYleft.center = CGPointMake(13, PlayerYleft.center.y);
    }
    if (PlayerYleft.center.x < 13) {
        PlayerYleft.center = CGPointMake(13, PlayerYleft.center.y);
    }
    if (PlayerYleft.center.y > 240) {
        PlayerYleft.center = CGPointMake(PlayerYleft.center.x, 240);
    }
    if (PlayerYleft.center.y < 95) {
        PlayerYleft.center = CGPointMake(PlayerYleft.center.x, 95);
    }
    if (PlayerYright.center.x > 295) {
        PlayerYright.center = CGPointMake(295, PlayerYright.center.y);
    }
    if (PlayerYright.center.x < 295) {
        PlayerYright.center = CGPointMake(295, PlayerYright.center.y);
    }
    if (PlayerYright.center.y > 240) {
        PlayerYright.center = CGPointMake(PlayerYright.center.x, 240);
    }
    if (PlayerYright.center.y < 95) {
        PlayerYright.center = CGPointMake(PlayerYright.center.x, 95);
    }
    if (SideControl.center.x < 198) {
        SideControl.center = CGPointMake(198, SideControl.center.y);
    }
    if (SideControl.center.x > 198) {
        SideControl.center = CGPointMake(198, SideControl.center.y);
    }
    if (SideControl.center.y < 242) {
        SideControl.center = CGPointMake(SideControl.center.x, 242);
    }
    
}





-(IBAction)BallMove{

    Exit.hidden = YES;
    StartButton.hidden = YES;
    
    Y = arc4random() %11;
    Y = Y - 5;
    
    X = arc4random() %11;
    X = X - 5;
    
    if (Y == 0) {
        Y = 1;
    }
    if (X == 0) {
        X = 1;
    }
    

    EndScore.hidden = YES;
    ScoreLabel.hidden = YES;
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(BallMovement) userInfo:nil repeats:YES];
    
    
    
    
}






-(IBAction)StartButton:(id)sender {
    timer4 = [NSTimer scheduledTimerWithTimeInterval:1.00 target:self selector:@selector(BallMove) userInfo:Nil repeats:NO];
    
    
    Exit.hidden = YES;
    EndScore.hidden = YES;
    ScoreLabel.hidden = YES;
    StartButton.hidden = YES;
    Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
    


    [_audioPlayer play];
    
    
    
    EndScoreNumber = 0;
    EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
    HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
    
}

-(void)BallMovement{
    
    
    [self Collision];
    Ball.center = CGPointMake(Ball.center.x + X, Ball.center.y + Y);
    Ball2.center = CGPointMake(Ball2.center.x + X2, Ball2.center.y + Y2);
    Ball3.center = CGPointMake(Ball3.center.x + X3, Ball3.center.y + Y3);
    
    
    
    if (Ball3.center.x < -9) {
        
        
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        [timer7 invalidate];
        
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        Ball2.hidden = YES;

        Ball3.hidden = YES;
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        [_audioPlayer stop];
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            
            
        }
        
        
        
        
    }
    if (Ball3.center.x > 400) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        [_audioPlayer stop];
        
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    if (Ball3.center.y > 435) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        [ScoreTime invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [_audioPlayer stop];
        
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    if (Ball3.center.y < 32) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [_audioPlayer stop];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    
    
    
    if (Ball2.center.x < -9) {
        
        
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        [timer7 invalidate];
        
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        [_audioPlayer stop];
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            
            
        }
        
        
        
        
    }
    if (Ball2.center.x > 400) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        [_audioPlayer stop];
        
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    if (Ball2.center.y > 435) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        [ScoreTime invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [_audioPlayer stop];
        
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    if (Ball2.center.y < 32) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [_audioPlayer stop];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];
        
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    

    
    if (Ball.center.x < -9) {
        
        
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        [timer7 invalidate];
        
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        [_audioPlayer stop];
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];

        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
    
            
        }
        
        
        
        
    }
    if (Ball.center.x > 400) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];

        [_audioPlayer stop];
        
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    if (Ball.center.y > 435) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        [ScoreTime invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];

        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [_audioPlayer stop];
        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    if (Ball.center.y < 32) {
        [timer invalidate];
        StartButton.hidden = NO;
        Exit.hidden = NO;
        [timer invalidate];
        Score.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [timer7 invalidate];
        EndScore.hidden = NO;
        ScoreLabel.hidden = NO;
        Ball.center = CGPointMake(150, 154);
        Ball2.center = CGPointMake(150, 154);
        Ball3.center = CGPointMake(150, 154);        EndScore.text = [NSString stringWithFormat:@"%i", EndScoreNumber];
        [timer3 invalidate];
        HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"ScoreNumber"];
        [_audioPlayer stop];
        [[NSUserDefaults standardUserDefaults] setInteger:BallS forKey:@"BallS"];

        Ball2.hidden = YES;
        
        Ball3.hidden = YES;
        if (EndScoreNumber > HighScore) {
            HighScore = EndScoreNumber;
            HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
            [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScore"];
            
            
        }
    }
    
}

-(IBAction)Start_First:(id)sender{
    
    Start_View.hidden = YES;
}





-(void)ScoreBall{
    
    
    EndScoreNumber = EndScoreNumber + 1;
    
    
    
}
-(void)ScoreHope{
    [_audioPlayer play];
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Construct URL to sound file
    NSString *path = [NSString stringWithFormat:@"%@/Music 2.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    
    
    
    if (BallStoreI == 0) {
        BallStoreLabel.text = @"White Ball";
        WhiteBallUse.hidden = NO;
        BlackBallUse.hidden = YES;
        StrobeBallUse.hidden = YES;
        OrangeBallUse.hidden = YES;
        PinkBallUse.hidden = YES;
        PurpleBallUse.hidden = YES;
        DarkGreenBallUse.hidden = YES;
        tealBallUse.hidden = YES;
        BrightGreenBallUse.hidden = YES;
        GreenBallUse.hidden = YES;
        SkyBlueBallUse.hidden = YES;
        AquaMarineBallUse.hidden = YES;
        RedBallUse.hidden = YES;
        SilverBallUse.hidden = YES;
        BlueBallUse.hidden = YES;
        GoldBallUse.hidden = YES;
        OrangeTintBallUse.hidden = YES;
        BlueTintBallUse.hidden = YES;
        GreenTintBallUse.hidden = YES;
        DeepRedTintBallUse.hidden = YES;
        Buy.hidden = YES;
    }
    if (BallStoreI == 1) {
        BallStoreLabel.text = @"Black Ball";
        
        if (BallS < 1) {
            if (BallS == 0) {
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BlackBallUse.hidden = YES;
                Buy.hidden = NO;
                BlackBallUse.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
            
        } else {
            BallStoreLabel.text = @"Black Ball";
            BlackBallUse.hidden = NO;
            StrobeBallUse.hidden = YES;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
        
    }
    if (BallStoreI == 2) {
        BallStoreLabel.text = @"Strobe Ball";
        
        if (BallS < 2) {
            if (BallS == 1) {
                Buy.hidden = NO;
                StrobeBallUse.hidden = YES;
            } else{
                BlackBallUse.hidden = YES;
                Buy.hidden = YES;
                StrobeBallUse.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        }  else {
            BlackBallUse.hidden = YES;
            
            StrobeBallUse.hidden = NO;
            OrangeBallUse.hidden = YES;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 3) {
        BallStoreLabel.text = @"Orange Ball";
        if (BallS < 3) {
            if (BallS == 2) {
                Buy.hidden = NO;
                OrangeBallUse.hidden = YES;
            } else {
                StrobeBallUse.hidden = YES;
                BlackBallUse.hidden = YES;
                
                Buy.hidden = YES;
                OrangeBallUse.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        } else {
            
            OrangeBallUse.hidden = NO;
            PinkBallUse.hidden = YES;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 4) {
        BallStoreLabel.text = @"Pink Ball";
        if (BallS < 4) {
            if (BallS == 3) {
                Buy.hidden = NO;
                PinkBallUse.hidden = YES;
            } else {
                StrobeBallUse.hidden = YES;
                
                Buy.hidden = YES;
                PinkBallUse.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        } else {
            
            PinkBallUse.hidden = NO;
            PurpleBallUse.hidden = YES;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 5) {
        BallStoreLabel.text = @"Purple Ball";
        if (BallS < 5) {
            if (BallS == 4) {
                Buy.hidden = NO;
                PurpleBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                PurpleBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            
            PurpleBallUse.hidden = NO;
            DarkGreenBallUse.hidden = YES;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 6) {
        BallStoreLabel.text = @"Dark Green Ball";
        
        if (BallS < 6) {
            if (BallS == 5) {
                Buy.hidden = NO;
                DarkGreenBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                DarkGreenBallUse.hidden = YES;
            }
        } else {
            
            BallStoreLabel.text = @"Dark Green Ball";
            DarkGreenBallUse.hidden = NO;
            tealBallUse.hidden = YES;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 7) {
        
        BallStoreLabel.text = @"Teal Ball";
        if (BallS < 7) {
            if (BallS == 6) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            tealBallUse.hidden = NO;
            BrightGreenBallUse.hidden = YES;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }    }
    if (BallStoreI == 8) {
        BallStoreLabel.text = @"Bright Green Ball";
        if (BallS < 8) {
            if (BallS == 7) {
                Buy.hidden = NO;
                BrightGreenBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                BrightGreenBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        else {
            BrightGreenBallUse.hidden = NO;
            GreenBallUse.hidden = YES;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            
        }
    }
    
    if (BallStoreI == 9) {
        BallStoreLabel.text = @"Green Ball";
        if (BallS < 9) {
            if (BallS == 8) {
                Buy.hidden = NO;
                GreenBallUse.hidden = YES;
            } else {
                GreenBallUse.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GreenBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        } else {
            GreenBallUse.hidden = NO;
            SkyBlueBallUse.hidden = YES;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            
        }
        
        
        
    }
    if (BallStoreI == 10) {
        BallStoreLabel.text = @"Sky Blue Ball";
        if (BallS < 10) {
            if (BallS == 9) {
                Buy.hidden = NO;
                SkyBlueBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                SkyBlueBallUse.hidden = YES;
                AquaMarineBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
            }
        }
        else{
            SkyBlueBallUse.hidden = NO;
            AquaMarineBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 11) {
        BallStoreLabel.text = @"Aqua Marine Ball";
        if (BallS < 11) {
            if (BallS == 10) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                SilverBallUse.hidden = YES;
                RedBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            AquaMarineBallUse.hidden = NO;
            SilverBallUse.hidden = YES;
            RedBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 12) {
        BallStoreLabel.text = @"Red Ball";
        if (BallS < 12) {
            if (BallS == 11) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                SilverBallUse.hidden = YES;
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            RedBallUse.hidden = NO;
            SilverBallUse.hidden = YES;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 13) {
        BallStoreLabel.text = @"Silver Ball";
        if (BallS < 13) {
            if (BallS == 12) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                BlueBallUse.hidden = YES;
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            SilverBallUse.hidden = NO;
            BlueBallUse.hidden = YES;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 14) {
        BallStoreLabel.text = @"Blue Ball";
        if (BallS < 14) {
            if (BallS == 13) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                GoldBallUse.hidden = YES;
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            BlueBallUse.hidden = NO;
            GoldBallUse.hidden = YES;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 15) {
        BallStoreLabel.text = @"Gold Ball";
        if (BallS < 15) {
            if (BallS == 14) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                OrangeTintBallUse.hidden = YES;
                BlueTintBallUse.hidden = YES;
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            GoldBallUse.hidden = NO;
            OrangeTintBallUse.hidden = YES;
            BlueTintBallUse.hidden = YES;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 16) {
        BallStoreLabel.text = @"Orange tint Ball";
        if (BallS < 16) {
            if (BallS == 15) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
                BlueTintBallUse.hidden = YES;
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            OrangeTintBallUse.hidden = NO;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
            
            BlueTintBallUse.hidden = YES;
        }}
    if (BallStoreI == 17) {
        BallStoreLabel.text = @"Blue tint Ball";
        if (BallS < 17) {
            if (BallS == 16) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                GreenTintBallUse.hidden = YES;
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            BlueTintBallUse.hidden = NO;
            GreenTintBallUse.hidden = YES;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 18) {
        BallStoreLabel.text = @"Green tint Ball";
        if (BallS < 18) {
            if (BallS == 17) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                DeepRedTintBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
            }
        }else{
            GreenTintBallUse.hidden = NO;
            DeepRedTintBallUse.hidden = YES;
            WhiteBallUse.hidden = YES;
        }
    }
    if (BallStoreI == 19) {
        BallStoreLabel.text = @"Deep red tint Ball";
        if (BallS < 19) {
            if (BallS == 18) {
                Buy.hidden = NO;
                tealBallUse.hidden = YES;
            } else {
                Buy.hidden = YES;
                tealBallUse.hidden = YES;
                WhiteBallUse.hidden = YES;
                
            }
        }else{
            DeepRedTintBallUse.hidden = NO;
            WhiteBallUse.hidden = YES;
        }}
    Start_View.hidden = NO;
    
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.04 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.04 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.06 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.07 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.08 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.09 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.10 target:self selector:@selector(CollisionScore) userInfo:Nil repeats:YES];
    
    
    
    ScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"ScoreNumber"];
    BallS = [[NSUserDefaults standardUserDefaults] integerForKey:@"BallS"];
    HighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScore"];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadString = [defaults objectForKey:@"saveString"];
    [Score setText:loadString];
    HomeCoins.text = [NSString stringWithFormat:@"%li", (long)ScoreNumber];
    [Score setText:loadString];
    
    [HomeCoins setText:loadString];
    
    HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
    
    [HighScoreLabel setText:loadString];
    
    HighScoreLabel.text = [NSString stringWithFormat:@"%li", (long)HighScore];
    

    
    
    if (BallStoreI < 3) {
        BallCoins.text = @"50 Coins";
    } else {
        if (BallStoreI < 16) {
            BallCoins.text = @"100 Coins";
            
        } else {
            if (BallStoreI < 21) {
                BallCoins.text = @"150 Coins";
                
            }
        }
    }
    
    BallStore.hidden = YES;
    Start_View.hidden = YES;
    Banner.adUnitID = @"ca-app-pub-3383258975090991/2355387268";
    Banner.rootViewController = self;
    GADRequest *request = [GADRequest request];
    [Banner loadRequest:request];
    
    Banner2.adUnitID = @"ca-app-pub-3383258975090991/2355387268";
    Banner2.rootViewController = self;
    [Banner2 loadRequest:request];
    
    Banner3.adUnitID = @"ca-app-pub-3383258975090991/2355387268";
    Banner3.rootViewController = self;
    [Banner3 loadRequest:request];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

