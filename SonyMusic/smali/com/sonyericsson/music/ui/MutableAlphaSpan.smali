.class public Lcom/sonyericsson/music/ui/MutableAlphaSpan;
.super Landroid/text/style/ForegroundColorSpan;
.source "MutableAlphaSpan.java"


# instance fields
.field private mAlpha:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 30
    iput p1, p0, Lcom/sonyericsson/music/ui/MutableAlphaSpan;->mAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/ui/MutableAlphaSpan;->mAlpha:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/sonyericsson/music/ui/MutableAlphaSpan;->mAlpha:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 56
    iget v0, p0, Lcom/sonyericsson/music/ui/MutableAlphaSpan;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 72
    iget p2, p0, Lcom/sonyericsson/music/ui/MutableAlphaSpan;->mAlpha:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
