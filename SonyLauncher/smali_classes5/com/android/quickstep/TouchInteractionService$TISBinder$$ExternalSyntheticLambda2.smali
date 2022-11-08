.class public final synthetic Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-object p2, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object v1, p0, Lcom/android/quickstep/TouchInteractionService$TISBinder$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->lambda$onActiveNavBarRegionChanges$4$com-android-quickstep-TouchInteractionService$TISBinder(Landroid/graphics/Region;)V

    return-void
.end method
