.class public interface abstract Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;
.super Ljava/lang/Object;
.source "ISysuiUnlockAnimationController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;,
        Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController"


# virtual methods
.method public abstract onLauncherSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLauncherUnlockController(Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
