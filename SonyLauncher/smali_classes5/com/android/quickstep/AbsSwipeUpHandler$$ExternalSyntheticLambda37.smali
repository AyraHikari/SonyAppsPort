.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda37;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda37;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    check-cast p1, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$linkRecentsViewScroll$29$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    return-void
.end method
