.class public final synthetic Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/TaskView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda9;->f$0:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda9;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda9;->f$0:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda9;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/quickstep/views/TaskView;->lambda$launchTask$2$com-android-quickstep-views-TaskView(Ljava/util/function/Consumer;Landroid/content/DialogInterface;I)V

    return-void
.end method
