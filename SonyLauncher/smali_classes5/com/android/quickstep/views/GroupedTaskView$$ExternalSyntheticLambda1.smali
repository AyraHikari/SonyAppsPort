.class public final synthetic Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/GroupedTaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/GroupedTaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/views/GroupedTaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/views/GroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->lambda$onTaskListVisibilityChanged$1$com-android-quickstep-views-GroupedTaskView(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
