.class public final synthetic Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/interaction/AllSetActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/interaction/AllSetActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/interaction/AllSetActivity;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {v0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->$r8$lambda$9G7bDMNxUgwT2l8qfhjrXz9Z8JA(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method
