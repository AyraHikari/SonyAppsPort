.class public final synthetic Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/RecentsModel;->lambda$isTaskRemoved$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method
