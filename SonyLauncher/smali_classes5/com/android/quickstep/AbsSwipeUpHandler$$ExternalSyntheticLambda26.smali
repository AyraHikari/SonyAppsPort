.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda26;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda26;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->switchToScreenshot()V

    return-void
.end method
