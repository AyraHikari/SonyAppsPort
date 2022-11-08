.class public final synthetic Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/interaction/TutorialController;

.field public final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/interaction/TutorialController;

    iput-object p2, p0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/interaction/TutorialController;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController$$ExternalSyntheticLambda2;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/interaction/TutorialController;->lambda$createSkipTutorialDialog$9$com-android-quickstep-interaction-TutorialController(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
