.class public final Lcom/android/systemui/flags/ParcelableFlag$DefaultImpls;
.super Ljava/lang/Object;
.source "Flag.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/flags/ParcelableFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static describeContents(Lcom/android/systemui/flags/ParcelableFlag;)I
    .locals 1
    .param p0, "this"    # Lcom/android/systemui/flags/ParcelableFlag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/flags/ParcelableFlag<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    return v0
.end method
