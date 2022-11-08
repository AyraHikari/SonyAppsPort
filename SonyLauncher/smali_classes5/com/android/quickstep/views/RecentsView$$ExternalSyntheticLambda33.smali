.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;->f$1:F

    iput p3, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;->f$2:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;->f$1:F

    iget v2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;->f$2:F

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$getEventDispatcher$34$com-android-quickstep-views-RecentsView(FFLandroid/view/MotionEvent;)V

    return-void
.end method
