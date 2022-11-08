.class Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;
.super Ljava/lang/Object;
.source "GestureNavContract.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/GestureNavContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticMessageReceiver"
.end annotation


# static fields
.field private static final MSG_CLOSE_LAST_TARGET:I


# instance fields
.field private mLastTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    .line 130
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;->mMessenger:Landroid/os/Messenger;

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;->mLastTarget:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;->mLastTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 147
    .local v0, "lastContext":Lcom/android/launcher3/views/ActivityContext;
    if-eqz v0, :cond_0

    .line 148
    const/16 v2, 0x2000

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 150
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 152
    .end local v0    # "lastContext":Lcom/android/launcher3/views/ActivityContext;
    :cond_1
    return v1
.end method

.method public setCurrentContext(Lcom/android/launcher3/views/ActivityContext;)Landroid/os/Message;
    .locals 2
    .param p1, "context"    # Lcom/android/launcher3/views/ActivityContext;

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;->mLastTarget:Ljava/lang/ref/WeakReference;

    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher3/GestureNavContract$StaticMessageReceiver;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 139
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    return-object v0
.end method
