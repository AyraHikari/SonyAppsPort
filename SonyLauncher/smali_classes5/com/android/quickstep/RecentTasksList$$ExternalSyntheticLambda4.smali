.class public final synthetic Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentTasksList;

.field public final synthetic f$1:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;->f$0:Lcom/android/quickstep/RecentTasksList;

    iput-object p2, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;->f$1:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object p3, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;->f$0:Lcom/android/quickstep/RecentTasksList;

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;->f$1:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget-object v2, p0, Lcom/android/quickstep/RecentTasksList$$ExternalSyntheticLambda4;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$3$com-android-quickstep-RecentTasksList(Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;)V

    return-void
.end method
