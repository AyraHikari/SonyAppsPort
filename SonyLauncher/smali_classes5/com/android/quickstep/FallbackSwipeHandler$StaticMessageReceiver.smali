.class Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;
.super Ljava/lang/Object;
.source "FallbackSwipeHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/FallbackSwipeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticMessageReceiver"
.end annotation


# instance fields
.field private mCurrentCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentUID:Landroid/os/ParcelUuid;

.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    .line 424
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mMessenger:Landroid/os/Messenger;

    .line 426
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mCurrentUID:Landroid/os/ParcelUuid;

    .line 427
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mCurrentCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 441
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mCurrentUID:Landroid/os/ParcelUuid;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mCurrentCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    .line 443
    .local v0, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Message;>;"
    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 445
    const/4 v1, 0x1

    return v1

    .line 448
    .end local v0    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Message;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public newCallback(Ljava/util/function/Consumer;)Landroid/os/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Message;",
            ">;)",
            "Landroid/os/Message;"
        }
    .end annotation

    .line 430
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mCurrentUID:Landroid/os/ParcelUuid;

    .line 431
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mCurrentCallback:Ljava/lang/ref/WeakReference;

    .line 433
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 434
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 435
    iget-object v1, p0, Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;->mCurrentUID:Landroid/os/ParcelUuid;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    return-object v0
.end method
