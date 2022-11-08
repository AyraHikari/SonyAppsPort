.class public final synthetic Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/ImageActionsApi$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/content/Intent;

    invoke-static {v0, p1, p2}, Lcom/android/quickstep/ImageActionsApi;->lambda$addImageAndSendIntent$0(ZLandroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
