.class public Landroidx/versionedparcelable/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final INNER_BUNDLE_KEY:Ljava/lang/String; = "a"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 91
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 92
    .local v0, "stream":Landroidx/versionedparcelable/VersionedParcelStream;
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    return-object v1
.end method

.method public static fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .line 63
    instance-of v0, p0, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-virtual {v0}, Landroidx/versionedparcelable/ParcelImpl;->getVersionedParcel()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parcel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 120
    .local v1, "innerBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 121
    return-object v0

    .line 123
    :cond_0
    const-class v2, Landroidx/versionedparcelable/ParcelUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 124
    const-string v2, "a"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    .end local v1    # "innerBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/RuntimeException;
    return-object v0
.end method

.method public static getVersionedParcelableList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 159
    .local v1, "innerBundle":Landroid/os/Bundle;
    const-class v2, Landroidx/versionedparcelable/ParcelUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 160
    const-string v2, "a"

    .line 161
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 162
    .local v2, "parcelableArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 163
    .local v4, "parcelable":Landroid/os/Parcelable;
    invoke-static {v4}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    goto :goto_0

    .line 167
    .end local v1    # "innerBundle":Landroid/os/Bundle;
    .end local v2    # "parcelableArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-object v0
.end method

.method public static putVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 3
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 100
    if-nez p2, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "innerBundle":Landroid/os/Bundle;
    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    .end local v0    # "innerBundle":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method public static putVersionedParcelableList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "innerBundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "toWrite":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/VersionedParcelable;

    .line 139
    .local v3, "obj":Landroidx/versionedparcelable/VersionedParcelable;
    invoke-static {v3}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v3    # "obj":Landroidx/versionedparcelable/VersionedParcelable;
    goto :goto_0

    .line 141
    :cond_0
    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    return-void
.end method

.method public static toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "obj"    # Landroidx/versionedparcelable/VersionedParcelable;
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 78
    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 79
    .local v0, "stream":Landroidx/versionedparcelable/VersionedParcelStream;
    invoke-virtual {v0, p0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 80
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    .line 81
    return-void
.end method

.method public static toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "obj"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 50
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroidx/versionedparcelable/VersionedParcelable;)V

    return-object v0
.end method
