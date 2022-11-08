.class public final synthetic Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/TaskView;

.field public final synthetic f$1:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public final synthetic f$2:Landroid/app/ActivityOptions;

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$0:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object p3, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$2:Landroid/app/ActivityOptions;

    iput-object p4, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$0:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$2:Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;->f$3:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/views/TaskView;->lambda$launchTaskInternal$6$com-android-quickstep-views-TaskView(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;)V

    return-void
.end method
