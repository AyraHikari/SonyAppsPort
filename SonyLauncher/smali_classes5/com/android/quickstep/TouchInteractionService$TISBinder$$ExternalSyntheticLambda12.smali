.class public final synthetic Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/WindowBounds;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda12;->f$0:Lcom/android/launcher3/util/WindowBounds;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda12;->f$0:Lcom/android/launcher3/util/WindowBounds;

    invoke-static {v0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onSplitScreenSecondaryBoundsChanged$5(Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method
