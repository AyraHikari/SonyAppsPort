.class public final synthetic Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-virtual {v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->preloadOverviewForSUWAllSet()V

    return-void
.end method
