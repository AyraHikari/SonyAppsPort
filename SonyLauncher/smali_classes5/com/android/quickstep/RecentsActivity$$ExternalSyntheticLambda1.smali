.class public final synthetic Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/RecentsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/RecentsActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/RecentsActivity;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {v0, p1}, Lcom/android/quickstep/RecentsActivity;->$r8$lambda$o1QirZVHUMQkTXdlLoCfJlCn2Zc(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method
