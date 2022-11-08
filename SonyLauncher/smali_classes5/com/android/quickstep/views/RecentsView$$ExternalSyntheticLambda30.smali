.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda30;->f$0:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda30;->f$0:Lcom/android/quickstep/views/TaskView;

    invoke-static {v0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->lambda$confirmSplitSelect$23(Lcom/android/quickstep/views/TaskView;Landroid/content/DialogInterface;I)V

    return-void
.end method
