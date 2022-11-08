.class public final synthetic Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;
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


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$3:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/quickstep/util/ImageActionUtils;->lambda$startShareActivity$0(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
