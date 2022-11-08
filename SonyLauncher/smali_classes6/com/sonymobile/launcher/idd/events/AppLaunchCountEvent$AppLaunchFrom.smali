.class public interface abstract annotation Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent$AppLaunchFrom;
.super Ljava/lang/Object;
.source "AppLaunchCountEvent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AppLaunchFrom"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final APPTRAY:Ljava/lang/String; = "apptray"

.field public static final APPTRAY_FROM_DESKTOP:Ljava/lang/String; = "apptray_from_desktop"

.field public static final APPTRAY_FROM_GESTURE_NAV:Ljava/lang/String; = "apptray_from_gesture_nav"

.field public static final APPTRAY_FROM_HOME_BUTTON:Ljava/lang/String; = "apptray_from_home_button"

.field public static final APPTRAY_FROM_THREE_BUTTON:Ljava/lang/String; = "apptray_from_threebutton"

.field public static final DESKTOP:Ljava/lang/String; = "desktop"

.field public static final RECENT:Ljava/lang/String; = "recent"

.field public static final SCRUB_RECENT:Ljava/lang/String; = "scrub_recent"
