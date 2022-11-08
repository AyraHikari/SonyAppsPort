.class public final synthetic Lcom/android/quickstep/util/ImageActionUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/quickstep/util/ImageActionUtils;->$r8$lambda$iWnfhZSJ59KYE-Ax__KXAH75ft8(Landroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
