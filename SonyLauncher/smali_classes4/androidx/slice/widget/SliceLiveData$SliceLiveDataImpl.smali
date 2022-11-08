.class Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
.super Landroidx/lifecycle/LiveData;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SliceLiveDataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

.field final mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field final mSliceViewManager:Landroidx/slice/SliceViewManager;

.field private final mUpdateSlice:Ljava/lang/Runnable;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 371
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 394
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    .line 415
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    .line 372
    invoke-static {p1}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 374
    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    .line 375
    iput-object p3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 376
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "listener"    # Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 363
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 394
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    .line 415
    new-instance v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    .line 364
    invoke-static {p1}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    .line 365
    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    .line 367
    iput-object p3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    .line 368
    return-void
.end method

.method static synthetic access$100(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 356
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 356
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 356
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$androidx-slice-widget-SliceLiveData$SliceLiveDataImpl(Landroidx/slice/Slice;)V
    .locals 0
    .param p1, "value"    # Landroidx/slice/Slice;

    .line 415
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActive()V
    .locals 3

    .line 381
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 382
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v0, v2}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 385
    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 389
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v0, v2}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    .line 392
    :cond_0
    return-void
.end method

.method onSliceError(ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 418
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p1, p2}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    .line 420
    return-void

    .line 422
    :cond_0
    const-string v0, "SliceLiveData"

    const-string v1, "Error binding slice"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    return-void
.end method
