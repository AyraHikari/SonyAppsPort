.class public Lcom/android/searchlauncher/SearchLauncher;
.super Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.source "SearchLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultOverlay()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
    .locals 1

    .line 13
    new-instance v0, Lcom/android/searchlauncher/OverlayCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/searchlauncher/OverlayCallbackImpl;-><init>(Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method
