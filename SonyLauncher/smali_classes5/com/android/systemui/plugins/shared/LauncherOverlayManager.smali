.class public interface abstract Lcom/android/systemui/plugins/shared/LauncherOverlayManager;
.super Ljava/lang/Object;
.source "LauncherOverlayManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlayCallbacks;,
        Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;
    }
.end annotation


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "w"    # Ljava/io/PrintWriter;

    .line 34
    return-void
.end method

.method public hideOverlay(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 42
    return-void
.end method

.method public hideOverlay(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 39
    if-eqz p1, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(I)V

    .line 40
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 67
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 58
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 55
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 64
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 61
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 31
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 32
    return-void
.end method

.method public onDeviceProvideChanged()V
    .locals 0

    .line 29
    return-void
.end method

.method public openOverlay()V
    .locals 0

    .line 36
    return-void
.end method

.method public startSearch([BLandroid/os/Bundle;)Z
    .locals 1
    .param p1, "config"    # [B
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 45
    const/4 v0, 0x0

    return v0
.end method
