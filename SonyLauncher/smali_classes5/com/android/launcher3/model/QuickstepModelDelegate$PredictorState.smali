.class Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
.super Ljava/lang/Object;
.source "QuickstepModelDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/QuickstepModelDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PredictorState"
.end annotation


# instance fields
.field public final containerId:I

.field private mLastTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field

.field public predictor:Landroid/app/prediction/AppPredictor;

.field public final storage:Lcom/android/launcher3/util/PersistedItemArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/PersistedItemArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "storageName"    # Ljava/lang/String;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    .line 387
    new-instance v0, Lcom/android/launcher3/util/PersistedItemArray;

    invoke-direct {v0, p2}, Lcom/android/launcher3/util/PersistedItemArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->storage:Lcom/android/launcher3/util/PersistedItemArray;

    .line 388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    .line 389
    return-void
.end method

.method static synthetic lambda$setTargets$0(Ljava/util/List;Ljava/util/List;I)Z
    .locals 2
    .param p0, "oldTargets"    # Ljava/util/List;
    .param p1, "newTargets"    # Ljava/util/List;
    .param p2, "i"    # I

    .line 407
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTarget;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/prediction/AppTarget;

    invoke-static {v0, v1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->-$$Nest$smareAppTargetsSame(Landroid/app/prediction/AppTarget;Landroid/app/prediction/AppTarget;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destroyPredictor()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->predictor:Landroid/app/prediction/AppPredictor;

    .line 396
    :cond_0
    return-void
.end method

.method setTargets(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)Z"
        }
    .end annotation

    .line 402
    .local p1, "newTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    .line 403
    .local v0, "oldTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    .line 405
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 406
    .local v1, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {v3, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 407
    invoke-interface {v2, v4}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 406
    :goto_0
    return v3
.end method
