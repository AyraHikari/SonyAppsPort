.class public interface abstract Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;
.super Ljava/lang/Object;
.source "ILauncherUnlockAnimationController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub;,
        Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"


# virtual methods
.method public abstract dispatchSmartspaceStateToSysui()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract playUnlockAnimation(ZJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract prepareForUnlock(ZLandroid/graphics/Rect;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSmartspaceSelectedPage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSmartspaceVisibility(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setUnlockAmount(FZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
