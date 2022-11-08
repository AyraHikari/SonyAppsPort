.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/quickstep/views/RecentsView;->lambda$removeTaskInternal$17(II)V

    return-void
.end method
