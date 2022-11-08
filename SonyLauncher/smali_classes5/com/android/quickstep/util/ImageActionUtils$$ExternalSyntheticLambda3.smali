.class public final synthetic Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[Landroid/content/Intent;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;->f$1:[Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;->f$1:[Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/util/ImageActionUtils;->lambda$persistBitmapAndStartActivity$2(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
