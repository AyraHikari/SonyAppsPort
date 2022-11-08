.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$2:I

    iput-boolean p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$1:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$2:I

    iget-boolean v3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda36;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$switchToScreenshot$21$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/systemui/shared/recents/model/ThumbnailData;IZ)V

    return-void
.end method
