.class public final synthetic Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(I[Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;->f$1:[Lcom/android/systemui/shared/recents/model/Task;

    iput p3, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;->f$1:[Lcom/android/systemui/shared/recents/model/Task;

    iget v2, p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->lambda$getPlaceholderTasks$0(I[Lcom/android/systemui/shared/recents/model/Task;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
