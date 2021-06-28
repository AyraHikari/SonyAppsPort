.class Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;
.super Ljava/lang/Object;
.source "AlphabeticalMergeCursor.java"

# interfaces
.implements Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultComparator"
.end annotation


# instance fields
.field private final mColIndexA:I

.field private final mColIndexB:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;->mColIndexA:I

    .line 66
    iput p2, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;->mColIndexB:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 1

    .line 71
    iget v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;->mColIndexA:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    iget v0, p0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$DefaultComparator;->mColIndexB:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 79
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
