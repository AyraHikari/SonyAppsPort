.class public final synthetic Lcom/android/launcher3/testing/TestInformationHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/graphics/Insets;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
