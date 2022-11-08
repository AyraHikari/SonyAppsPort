.class public Lcom/android/launcher3/allapps/SecondaryLauncherAllAppsContainerView;
.super Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.source "SecondaryLauncherAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/SecondaryLauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/SecondaryLauncherAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected updateBackground(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 44
    return-void
.end method
