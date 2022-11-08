.class public final synthetic Lcom/android/quickstep/interaction/GestureSandboxActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/interaction/GestureSandboxActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/GestureSandboxActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/GestureSandboxActivity;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {v0, p1}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->$r8$lambda$MLfEr6VbCdzMtr9UZ7ONzOXK98Y(Lcom/android/quickstep/interaction/GestureSandboxActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method
