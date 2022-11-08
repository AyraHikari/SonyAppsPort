.class public final synthetic Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    return p1
.end method
