.class final enum Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;
.super Ljava/lang/Enum;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlbumLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

.field public static final enum GRID:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

.field public static final enum LIST:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;


# instance fields
.field private final mSharedPrefsValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    const-string v1, "LIST"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->LIST:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    .line 62
    new-instance v0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    const-string v1, "GRID"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4}, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->GRID:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    .line 59
    new-array v0, v2, [Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    sget-object v1, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->LIST:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->GRID:Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->$VALUES:[Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->mSharedPrefsValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;
    .locals 1

    .line 59
    const-class v0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;
    .locals 1

    .line 59
    sget-object v0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->$VALUES:[Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;

    return-object v0
.end method


# virtual methods
.method getSharedPrefsValue()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/sonyericsson/music/library/AlbumsFragment$AlbumLayout;->mSharedPrefsValue:I

    return v0
.end method
