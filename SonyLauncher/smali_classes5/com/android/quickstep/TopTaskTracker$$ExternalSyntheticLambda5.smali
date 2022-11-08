.class public final synthetic Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TopTaskTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TopTaskTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/quickstep/TopTaskTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/quickstep/TopTaskTracker;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$4$com-android-quickstep-TopTaskTracker(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    return p1
.end method
