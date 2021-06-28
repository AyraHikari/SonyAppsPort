.class public Lcom/sonyericsson/music/library/LibraryListAdapter$Header;
.super Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;
.source "LibraryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LibraryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/LibraryListAdapter$Header$TypeComparator;
    }
.end annotation


# static fields
.field public static final TYPE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/library/LibraryListAdapter$Header;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_IMPORTANT:I = -0x2

.field public static final TYPE_NO_CONTENT:I = -0x1

.field public static final TYPE_PADDING:I = -0x3


# instance fields
.field final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 421
    new-instance v0, Lcom/sonyericsson/music/library/LibraryListAdapter$Header$TypeComparator;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/LibraryListAdapter$Header$TypeComparator;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->TYPE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 424
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;-><init>(Landroid/view/View;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZI)V
    .locals 0

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;-><init>(Landroid/view/View;Z)V

    .line 433
    iput p3, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;->mType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 438
    instance-of v0, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Header;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 441
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 409
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->hashCode()I

    move-result v0

    return v0
.end method
