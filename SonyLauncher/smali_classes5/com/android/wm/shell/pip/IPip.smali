.class public interface abstract Lcom/android/wm/shell/pip/IPip;
.super Ljava/lang/Object;
.source "IPip.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/IPip$Stub;,
        Lcom/android/wm/shell/pip/IPip$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.wm.shell.pip.IPip"


# virtual methods
.method public abstract setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setShelfHeight(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSwipePipToHome(ILandroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
