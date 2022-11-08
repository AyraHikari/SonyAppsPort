.class public final synthetic Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/TaskView;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;->f$0:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/Consumer;

    iput-boolean p3, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;->f$0:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;->f$1:Ljava/util/function/Consumer;

    iget-boolean v2, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;->f$2:Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/quickstep/views/TaskView;->lambda$launchTask$1$com-android-quickstep-views-TaskView(Ljava/util/function/Consumer;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
