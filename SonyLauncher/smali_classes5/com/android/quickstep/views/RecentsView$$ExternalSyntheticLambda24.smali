.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda24;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda24;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda24;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda24;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->lambda$animateRecentsRotationInPlace$8$com-android-quickstep-views-RecentsView(I)V

    return-void
.end method
