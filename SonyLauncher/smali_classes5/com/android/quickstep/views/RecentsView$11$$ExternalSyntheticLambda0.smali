.class public final synthetic Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/recents/model/Task$TaskKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$11$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0}, Lcom/android/quickstep/views/RecentsView$11;->lambda$onTaskRemoved$0(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
