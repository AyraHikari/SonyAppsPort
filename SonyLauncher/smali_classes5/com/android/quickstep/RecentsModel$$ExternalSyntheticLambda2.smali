.class public final synthetic Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsModel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/RecentsModel;

    iput p2, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/quickstep/RecentsModel$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/RecentsModel;->lambda$onTaskStackChangedBackground$1$com-android-quickstep-RecentsModel(ILjava/util/ArrayList;)V

    return-void
.end method
