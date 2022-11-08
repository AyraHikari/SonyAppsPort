.class public final synthetic Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/function/Supplier;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$5:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$3:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda2;->f$5:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/util/ImageActionUtils;->lambda$startShareActivity$1(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
