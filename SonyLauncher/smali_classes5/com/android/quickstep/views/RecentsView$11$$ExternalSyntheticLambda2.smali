.class public final synthetic Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView$11;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$11;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/views/RecentsView$11;

    iput p2, p0, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/views/RecentsView$11;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/RecentsView$11;->lambda$onTaskRemoved$1$com-android-quickstep-views-RecentsView$11(ILjava/lang/Boolean;)V

    return-void
.end method
