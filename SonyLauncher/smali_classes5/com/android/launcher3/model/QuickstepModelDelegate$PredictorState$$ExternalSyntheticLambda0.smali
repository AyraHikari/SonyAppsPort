.class public final synthetic Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->lambda$setTargets$0(Ljava/util/List;Ljava/util/List;I)Z

    move-result p1

    return p1
.end method
