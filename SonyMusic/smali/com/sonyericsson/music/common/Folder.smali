.class public Lcom/sonyericsson/music/common/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# static fields
.field private static final SLASH:Ljava/lang/String; = "/"

.field public static final sPathComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/common/Folder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArtUri:Landroid/net/Uri;

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private mPathDisplayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/sonyericsson/music/common/Folder$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/Folder$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/Folder;->sPathComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/sonyericsson/music/common/Folder;->mId:I

    .line 50
    iput-object p4, p0, Lcom/sonyericsson/music/common/Folder;->mArtUri:Landroid/net/Uri;

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    const-string p4, "/"

    .line 54
    invoke-virtual {p1, p4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    :goto_0
    if-eq p4, p2, :cond_2

    const-string p2, "/"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/common/Folder;->mPath:Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/sonyericsson/music/common/Folder;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "/"

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mPath:Ljava/lang/String;

    const-string p1, ""

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mName:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 121
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/common/Folder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 124
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/common/Folder;

    .line 125
    iget v1, p0, Lcom/sonyericsson/music/common/Folder;->mId:I

    iget p1, p1, Lcom/sonyericsson/music/common/Folder;->mId:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArtUri()Landroid/net/Uri;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFullDisplayPath()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/common/Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/common/Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/sonyericsson/music/common/Folder;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplayName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/sonyericsson/music/common/Folder;->mId:I

    return v0
.end method

.method public setPathDisplayName(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/music/common/Folder;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/common/Folder;->mPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "/"

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "/"

    .line 84
    iput-object v0, p0, Lcom/sonyericsson/music/common/Folder;->mPathDisplayName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
