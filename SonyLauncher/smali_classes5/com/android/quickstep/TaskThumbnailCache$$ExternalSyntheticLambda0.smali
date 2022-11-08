.class public final synthetic Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p2, p0, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p0, Lcom/android/quickstep/TaskThumbnailCache$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/TaskThumbnailCache;->lambda$updateThumbnailInBackground$1(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
