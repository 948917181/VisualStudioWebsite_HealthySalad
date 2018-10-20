
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/12/2018 23:53:33
-- Generated from EDMX file: C:\Users\chunh\source\repos\FIT5032\FIT5032\Models\FIT5032_Models.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FIT5032_Database];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Recipes'
CREATE TABLE [dbo].[Recipes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RecipeTitle] nvarchar(max)  NOT NULL,
    [Author] nvarchar(max)  NOT NULL,
    [PublishDate] datetime  NOT NULL,
    [Content] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Reviews'
CREATE TABLE [dbo].[Reviews] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Reviewer] nvarchar(max)  NOT NULL,
    [PublishDate] datetime  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [RecipeId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Recipes'
ALTER TABLE [dbo].[Recipes]
ADD CONSTRAINT [PK_Recipes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Reviews'
ALTER TABLE [dbo].[Reviews]
ADD CONSTRAINT [PK_Reviews]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RecipeId] in table 'Reviews'
ALTER TABLE [dbo].[Reviews]
ADD CONSTRAINT [FK_RecipeReview]
    FOREIGN KEY ([RecipeId])
    REFERENCES [dbo].[Recipes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RecipeReview'
CREATE INDEX [IX_FK_RecipeReview]
ON [dbo].[Reviews]
    ([RecipeId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------