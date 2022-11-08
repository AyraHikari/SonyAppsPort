.class public final synthetic Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsActivity;

.field public final synthetic f$1:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/RecentsActivity;

    iput-object p2, p0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda2;->f$1:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/RecentsActivity;

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda2;->f$1:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsActivity;->lambda$startHome$0$com-android-quickstep-RecentsActivity(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method
