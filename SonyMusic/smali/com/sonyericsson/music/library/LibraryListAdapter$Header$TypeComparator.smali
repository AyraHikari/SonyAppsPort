.class Lcom/sonyericsson/music/library/LibraryListAdapter$Header$TypeComparator;
.super Ljava/lang/Object;
.source "LibraryListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LibraryListAdapter$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/music/library/LibraryListAdapter$Header;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/music/library/LibraryListAdapter$Header;Lcom/sonyericsson/music/library/LibraryListAdapter$Header;)I
    .locals 0

    .line 448
    iget p1, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->mType:I

    iget p2, p2, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->mType:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 444
    check-cast p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    check-cast p2, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter$Header$TypeComparator;->compare(Lcom/sonyericsson/music/library/LibraryListAdapter$Header;Lcom/sonyericsson/music/library/LibraryListAdapter$Header;)I

    move-result p1

    return p1
.end method
