.class public Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
.super Lcom/sonymobile/launcher/idd/events/BaseEvent;
.source "AppLaunchCountEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent$AppLaunchFrom;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "AppLaunchCount"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apptrayFromDesktop:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apptray_from_desktop"
    .end annotation
.end field

.field private apptrayFromGestureNav:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apptray_from_gesture_nav"
    .end annotation
.end field

.field private apptrayFromHomeButton:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apptray_from_home_button"
    .end annotation
.end field

.field private apptrayFromThreeButton:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apptray_from_threebutton"
    .end annotation
.end field

.field private desktop:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "desktop"
    .end annotation
.end field

.field private recent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recent"
    .end annotation
.end field

.field private scrubRecent:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scrub_recent"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    const-string v0, "AppLaunchCount"

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/launcher/idd/events/BaseEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public apptrayFromDesktop(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    .locals 0
    .param p1, "apptrayFromDesktop"    # I

    .line 55
    iput p1, p0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromDesktop:I

    .line 56
    return-object p0
.end method

.method public apptrayFromGestureNav(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    .locals 0
    .param p1, "apptrayFromGestureNav"    # I

    .line 61
    iput p1, p0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromGestureNav:I

    .line 62
    return-object p0
.end method

.method public apptrayFromHomeButton(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    .locals 0
    .param p1, "apptrayFromHomeButton"    # I

    .line 49
    iput p1, p0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromHomeButton:I

    .line 50
    return-object p0
.end method

.method public apptrayFromThreeButton(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    .locals 0
    .param p1, "apptrayFromThreeButton"    # I

    .line 67
    iput p1, p0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->apptrayFromThreeButton:I

    .line 68
    return-object p0
.end method

.method public desktop(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    .locals 0
    .param p1, "desktop"    # I

    .line 73
    iput p1, p0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->desktop:I

    .line 74
    return-object p0
.end method

.method public recent(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    .locals 0
    .param p1, "recent"    # I

    .line 79
    iput p1, p0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->recent:I

    .line 80
    return-object p0
.end method

.method public scrubRecent(I)Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;
    .locals 0
    .param p1, "scrubRecent"    # I

    .line 85
    iput p1, p0, Lcom/sonymobile/launcher/idd/events/AppLaunchCountEvent;->scrubRecent:I

    .line 86
    return-object p0
.end method
