.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda10;->f$0:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda10;->f$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/RecentsView;->dismissAllTasks(Landroid/view/View;)V

    return-void
.end method
