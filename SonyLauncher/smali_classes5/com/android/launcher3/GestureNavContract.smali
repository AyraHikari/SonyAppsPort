.class public Lcom/android/launcher3/GestureNavContract;
.super Ljava/lang/Object;
.source "GestureNavContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_GESTURE_CONTRACT:Ljava/lang/String; = "gesture_nav_contract_v1"

.field public static final EXTRA_ICON_POSITION:Ljava/lang/String; = "gesture_nav_contract_icon_position"

.field public static final EXTRA_ICON_SURFACE:Ljava/lang/String; = "gesture_nav_contract_surface_control"

.field public static final EXTRA_ON_FINISH_CALLBACK:Ljava/lang/String; = "gesture_nav_contract_finish_callback"

.field public static final EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"

.field private static final TAG:Ljava/lang/String; = "GestureNavContract"

.field private static sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field private final mCallback:Landroid/os/Message;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/GestureNavContract;->sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Message;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "callback"    # Landroid/os/Message;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/launcher3/GestureNavContract;->componentName:Landroid/content/ComponentName;

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/GestureNavContract;->user:Landroid/os/UserHandle;

    .line 66
    iput-object p3, p0, Lcom/android/launcher3/GestureNavContract;->mCallback:Landroid/os/Message;

    .line 67
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/GestureNavContract;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 98
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 99
    return-object v1

    .line 101
    :cond_0
    const-string v0, "gesture_nav_contract_v1"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 102
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 103
    return-object v1

    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 107
    const-string v0, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 108
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string v3, "android.intent.extra.USER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 109
    .local v3, "userHandle":Landroid/os/UserHandle;
    const-string v4, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 111
    .local v4, "callback":Landroid/os/Message;
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v5, :cond_2

    .line 113
    new-instance v1, Lcom/android/launcher3/GestureNavContract;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/launcher3/GestureNavContract;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Message;)V

    return-object v1

    .line 115
    :cond_2
    return-object v1
.end method


# virtual methods
.method public sendEndPosition(Landroid/graphics/RectF;Lcom/android/launcher3/views/ActivityContext;Landroid/view/SurfaceControl;)V
    .locals 5
    .param p1, "position"    # Landroid/graphics/RectF;
    .param p2, "context"    # Lcom/android/launcher3/views/ActivityContext;
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "gesture_nav_contract_icon_position"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    const-string v1, "gesture_nav_contract_surface_control"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    sget-object v1, Lcom/android/launcher3/GestureNavContract;->sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;-><init>(Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver-IA;)V

    sput-object v1, Lcom/android/launcher3/GestureNavContract;->sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    .line 81
    :cond_0
    sget-object v1, Lcom/android/launcher3/GestureNavContract;->sMessageReceiver:Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;->setCurrentContext(Lcom/android/launcher3/views/ActivityContext;)Landroid/os/Message;

    move-result-object v1

    const-string v2, "gesture_nav_contract_finish_callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 84
    .local v1, "callback":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/launcher3/GestureNavContract;->mCallback:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 85
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 88
    :try_start_0
    iget-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "GestureNavContract"

    const-string v4, "Error sending icon position"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
